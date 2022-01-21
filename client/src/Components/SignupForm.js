import React, { useState } from 'react'



function Signup({ setCurrentUser }) {
    const [signupForm, setSignupForm] = useState({
        first_name: "",
        last_name: "",
        gender: "",
        password: "",
        phone_number: "",
        email: "",
        
    })

    const handleChange = (e) => {
        setSignupForm({ ...signupForm, [e.target.name]: e.target.value })
    }


    const handleSubmit = (e) => {
        e.preventDefault()

        const configObj = {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(signupForm),
        };

        fetch("signup", configObj).then((resp) => {
            if (resp.ok) {
                resp.json().then((user) => {
                    setCurrentUser(user);
                    setSignupForm({
                      first_name: "",
                      last_name: "",
                      gender: "",
                      password: "",
                      phone_number: "",
                      email: "",
                    })
                    window.location.reload(false)
                });
            } else {
                resp.json().then((errors) => {
                    console.error(errors);
                });
            }
        });
    }


    return (
        <div className="everything">
            <h1 className="create-account">   🚗 Create Account 💨</h1>
            <div className="Sign-up-form-div">
                <div> <img className="image-signup" alt="Safe rides" src="" /> </div>
                <div className="signup-container">
                    <form onSubmit={handleSubmit} className="form">
                        <div className="form-group">
                            <label>   🚗 First Name: 💨</label>
                            <input
                                name="first_name"
                                type="text"
                                value={signupForm.first_name}
                                onChange={handleChange}
                                required />

                        </div>

                        <div className="form-group">
                            <label>    🚗 Last Name: 💨 </label>
                            <input
                                name="last_name"
                                type="text"
                                value={signupForm.last_name}
                                onChange={handleChange}
                                required />

                        </div>

                        <div className="form-group">
                            <label> 🚗 Phone Number: 💨 </label>
                            <input
                                name="username"
                                type="text"
                                value={signupForm.username}
                                onChange={handleChange}
                                required />
                        </div>

                        <div className="form-group">
                            <label> 🚗 Password: 💨 </label>
                            <input
                                name="password"
                                type="password"
                                value={signupForm.password}
                                onChange={handleChange}
                                required />
                        </div>

                        <div className="form-group">
                            <label> 🚗Email: 💨 </label>
                            <input
                                name="email"
                                type="text"
                                value={signupForm.email}
                                onChange={handleChange}
                                required />
                        </div>
                        <div className="input-send">
                            <button type="submit" className="Submit">Submit</button>
                            <Link to="/login"><button className="Submit">Log in</button></Link>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    )
}

export default Signup;