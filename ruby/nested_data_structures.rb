uc_berkeley = {
    campus: {
        libraries: [
            "Doe", 
            "Wheeler", 
            "Stacks"
            ],

        academic_ranking: "number 1 public university",
        
        people: {
        professors: 500,
        undergraduates: 30000
        }
    },

    city: {
        official_name: "City of Berkeley",
        nickname: "Crazytown"
    },

    for_fun: {

    }

}

p uc_berkeley

uc_berkeley[:campus][:majors] = "marine biology"
puts "----------"
puts "newly added stuff"

uc_berkeley[:for_fun][:restaurants] = "Cheeseboard"
p uc_berkeley


