function validateForm(){

    let name =
        document.forms["feedbackForm"]["name"].value;

    let email =
        document.forms["feedbackForm"]["email"].value;

    let message =
        document.forms["feedbackForm"]["message"].value;

    if(name.trim() == ""){

        alert("Name cannot be empty");

        return false;
    }

    if(name.length < 3){

        alert("Name must contain minimum 3 characters");

        return false;
    }

    if(email.trim() == ""){

        alert("Email cannot be empty");

        return false;
    }

    if(!email.includes("@")){

        alert("Enter valid email");

        return false;
    }

    if(message.trim() == ""){

        alert("Feedback message cannot be empty");

        return false;
    }

    if(message.length < 10){

        alert("Feedback must contain minimum 10 characters");

        return false;
    }

    return true;
}