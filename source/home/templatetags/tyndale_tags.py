from django import template
from ..models import HomePage, Page, AboutPage, Course

register = template.Library()


@register.assignment_tag(takes_context=True)
def get_site_root(context):
    return context['request'].site.root_page


@register.inclusion_tag("home/navbar/navbar.html", takes_context=True)
def display_navbar(context):
    parent = get_site_root(context)
    calling_page = context['self']
    menuitems = parent.get_children().live().in_menu()
    for menuitem in menuitems:
        menuitem.show_dropdown = menuitem.get_children().live().in_menu().exists()
        menuitem.active = (calling_page.url.startswith(menuitem.url) if calling_page else False)

    return {
        "calling_page": calling_page,
        "menuitems": menuitems,
        "request": context['request']
    }


@register.inclusion_tag('home/navbar/navbar_dropdown.html', takes_context=True)
def display_navbar_dropdown(context, parent):
    menuitems_children = parent.get_children().live().in_menu()

    return {
        "parent": parent,
        "menuitems_children": menuitems_children,
        "request": context['request'],
    }


@register.inclusion_tag('home/navbar/sidemenu.html', takes_context=True)
def display_sidemenu(context):
    current_page = context['self']
    has_children = current_page.get_children().live().in_menu().exists()
    menuitems_children = current_page.get_children().live().in_menu()

    ancestor = current_page.get_ancestors().last()
    if ancestor is not None:
        ancestor_children_has_children = ancestor.get_children().live().in_menu().exists()
        if ancestor_children_has_children:
            ancestor_children = ancestor.get_children().live().in_menu()
        else:
            ancestor_children = ()
    else:
        ancestor_children_has_children = False
        ancestor_children = ()

    return {
        "ancestor": ancestor,
        "ancestor_children_has_children": ancestor_children_has_children,
        "ancestor_children": ancestor_children,
        "current_page": current_page,
        "children": menuitems_children,
        "has_children": has_children,
        "request": context['request']
    }


@register.inclusion_tag('home/inclusion/subsection.html', takes_context=True)
def display_subsection(context):
    current_page = context['self']

    return {
        "current_page": current_page,
    }


