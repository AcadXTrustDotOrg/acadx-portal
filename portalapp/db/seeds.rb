degree_list = [
    [1, "B.E ECE", "Electronics & Communication Engineering"],
    [2, "B.E CSE", "Computer Sciences & Engineering"],
    [3, "B.E EEE", "Electrical & Electronics Engineering"]
]

degree_list.each do |id, name, description|
    Degree.create(degree_id: id, degree_name: name, degree_description: description)
end

role_list = [
    [1, "USER", "Simple User"],
    [2, "ADMIN", "Approver"],
    [3, "SUPERADMIN", "Super Administrator"]
]

role_list.each do |id, name, description|
    UserRole.create(role_id: id, role_name: name, role_description: description)
end