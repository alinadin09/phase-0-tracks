highway = {
    hov: {
        name: 'hov',
        lanes: {
            total_lanes: 2,
            lanes_available: 0
        },
        vehicles: [
            "2 people car", 
            "motorcycle"
        ]
    },
    regular: {
        name: 'regular',
        lanes: {
            total_lanes: 3,
            lanes_available: 2
        },
        vehicles: [
            "vans", 
            "freigt vehicles",
            "trucks",
            "cars"
        ]
    },
    ramp: {
        name: 'ramp',
        type: {
            on_ramp: 1,
            off_ramp: 1
        },
        vehicles: []
    }
}


highway[:hov][:vehicles][1]
highway[:ramp][:type]
highway[:ramp][:vehicles].push("full")
highway[:ramp]