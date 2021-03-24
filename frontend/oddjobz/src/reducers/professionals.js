const initialState = {
    name: "",
    profession: ""
}

export default (state = initialState, action) => {
    switch (action.type) {
        case "SET_PROFESSIONAL":
            return action.professional
        default:
            return state
    }
}
