import logo from './logo.svg';
import './App.css';


import { useState } from 'react'




function App() {

  // const [ v , f ] = useState( initial/defaule STATE of v )
  const [ emailInputFieldValue, updateEmailInputFieldValue ] = useState( "" )
    console.log("STATE OF  emailInputFieldValue: ", emailInputFieldValue)  //
    // -x- A NO-NO : updateEmailInputFieldValue("5-EVER")
    ////  Calling a  useState  setter function outside of  our  return/render  
    ////  AND/OR  NOT in a useEffect, will cause the setter function to keep being called, 
    ////  and the Component to keep reading it, and rerendering it
    
    




  return (
    <div className="App">

      <header className="App-header">

        <img src={logo} className="App-logo" alt="logo" />




        <h1>- Nav Bar -</h1>

        <br/><br/><br/><br/>








        <h1>- Login Form -</h1>

          <form onSubmit={
            
            ( sythEvent )=>{  sythEvent.preventDefault()

              console.log(sythEvent)

            }
          
          }>
            {/* .addEventListener( "submit" , (e)=>{} ) */}

            <label >Email:</label>
            <input onChange={

              ( sythEvent )=>{
                // console.log("onChange synthEVent: ", sythEvent)  //
                // console.log("onChange synthEVent.target: ", sythEvent.target)  //
                // console.log("onChange synthEVent.target.value: ", sythEvent.target.value)  //
                // console.log("...typing")  //

                updateEmailInputFieldValue( sythEvent.target.value )
              }

            }

              value={emailInputFieldValue}
            
            /><br/>

            <label >Username:</label>
            <input /><br/>

            <label >Password:</label>
            <input /><br/>

            <input value="Login!🚪💫✨" type="submit" />
            {/* <button type="submit" >S</button> */}


          </form>

        <br/><br/><br/><br/>
















        <h1>- SignUp Form -</h1>

        <img src={logo} className="App-logo" alt="logo" />

      </header>

    </div>
  );
}
export default App;
