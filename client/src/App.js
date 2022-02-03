import logo from './logo.svg';
import './App.css';

function App() {




  return (
    <div className="App">
      <header className="App-header">

        <img src={logo} className="App-logo" alt="logo" />

        <h1>- Nav Bar -</h1>

        <h1>- Login Form -</h1>
          <form onSubmit={ 
            
            ( sythEvent )=>{  sythEvent.preventDefault()

              console.log(sythEvent)

            }
          
          }>
            {/* .addEventListener( "submit" , (e)=>{} ) */}

            <input />

            <input type="submit" />
            <button type="submit" >S</button>

          </form>

        <h1>- SignUp Form -</h1>

        <img src={logo} className="App-logo" alt="logo" />

      </header>
    </div>
  );
}

export default App;
