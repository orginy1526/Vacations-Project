import "./Register.css";
import { useForm } from "react-hook-form";
import { useNavigate, useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import User from "../../../../model/user";

import Box from "@mui/material/Box";
import TextField from "@mui/material/TextField";
import { Button } from "@mui/joy";
import userActions from "../../../../Util/userActions";
import Swal from "sweetalert2";

function Register(): JSX.Element {
  const [users, setUsers] = useState<User[]>([]);
  const [userInput, setUserInput] = useState<User>();
  let [validationCount, setValidationCount] = useState(0);

  const { register, handleSubmit } = useForm<User>();

  const navigate = useNavigate();
  const params = useParams();
  const userId = +(params.id || "");

  async function send(value: User) {
    try {
      console.log("users", users);
      users.map((user) => {
        console.log("user", user);
        console.log("value", value);
        let english = /^[A-Za-z0-9]*$/;

        if (
          user.user_name === value.user_name.replace(/\s+/g, "") &&
          user.password === value.password.replace(/\s+/g, "")
        ) {
          console.log("1st if");

          return Swal.fire(
            "Are U Logged in already ?",
            "press the login button above ☝️"
          );
        } else if (
          value.user_name === "" ||
          value.password === "" ||
          value.first_name === "" ||
          value.last_name === ""
        ) {
          console.log("2nd if");
          throw Swal.fire("fill Out All the Fields ✍️");
        } else if (
          english.test(value.user_name) &&
          english.test(value.first_name) &&
          english.test(value.last_name) &&
          user.user_name !== value.user_name.replace(/\s+/g, "") &&
          user.password !== value.password.replace(/\s+/g, "")
        ) {
          console.log("3nd if");
          console.log("count", validationCount);
          setValidationCount(++validationCount);
          if (validationCount > users.length) {
            setValidationCount(0);
          }
        } else if (user.user_name === value.user_name.replace(/\s+/g, "")) {
          return Swal.fire("User name already exists");
        } else {
          console.log("4th if");
          return Swal.fire("Write only in English Letters");
        }
      });
      if (validationCount === users.length) {
        console.log("count", validationCount);
        console.log("userLength", users.length);
        addUser(value);
        navigate("/api/user/vacations", {
          state: {
            user: value,
          },
        });
      }
    } catch (err: any) {
      console.log(err);
    }
  }

  async function getOneUser(userId: number) {
    let userInputValue = await userActions.getOneUser(userId);
    setUserInput(userInputValue);
  }
  async function addUser(user: User) {
    await userActions.addUser(user);
  }

  useEffect(() => {
    if (userId > 0) {
      getOneUser(userId);
    }
    userActions
      .getAllUsers()
      .then((users) => setUsers(users))
      .catch((err) => console.error(err));
  }, []);

  console.log("users", users, "userInput", userInput);
  return (
    <div className="Register">
      <Box
        onSubmit={handleSubmit(send)}
        component="form"
        sx={{
          "& .MuiTextField-root": { m: 1, width: "25ch" },
        }}
        noValidate
        autoComplete="off"
      >
        <div>
          <TextField
            label="First Name"
            id="outlined-size-normal"
            {...register("first_name")}
          />
        </div>
        <div>
          <TextField
            label="Last Name"
            id="outlined-size-normal"
            {...register("last_name")}
          />
        </div>
        <div>
          <TextField
            label="User Name"
            id="outlined-size-normal"
            {...register("user_name")}
          />
        </div>
        <div>
          <TextField
            label="Password"
            id="outlined-size-normal"
            {...register("password")}
          />
        </div>
        <Button variant="outlined" type="submit">
          Submit
        </Button>
      </Box>
    </div>
  );
}

export default Register;
