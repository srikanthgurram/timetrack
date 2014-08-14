module ApplicationHelper
	def display_nav_items(displayname, controllername, linkurl)
		raw("<li #{controllername == controller ? ' class="active"' : ''}> #{link_to displayname, linkurl} </li>")
	end

	def nav_items
		[
		{
			displayname: "Projects",
			controllername: 'projects',
			linkurl: projects_path
		},
		{
			displayname: "Clients",
			controllername: 'clients',
			linkurl: clients_path	
		},
		{
			displayname: "Employees",
			controllername: 'employees',
			linkurl: employees_path
		},
		{
			displayname: "Works",
			controllername: 'works',
			linkurl: works_path
		},
		{
			displayname: "Contact Us",
			controllername: 'contactus',
			linkurl: 'contactus_path'
		}


		]
	end
end
