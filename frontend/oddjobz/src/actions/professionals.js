export const fetchProfessionals = () => {
    return dispatch => {
        fetch("http://localhost:3001/api/v1/professionals")
        .then(response => response.json())
        .then(professionals => {
                dispatch({type: "SET_PROFESSIONAL", payload: professionals});
                professionals.data.map(professional => {
                    return professional.attributes.name
                })
        })
    }
}


