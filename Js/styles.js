
const loginBtn=document.querySelector('.loginBtn')
const registerBtn =document.querySelector('.signUpBtn')    
const loginForm =document.querySelector('.loginForm')
const registerForm=document.querySelector('.registerForm')
const overlayRight=document.querySelector('.overlayRight')
const overlayLeft=document.querySelector('.overlayLeft')
const formsContainer = document.querySelector('.formsContainer')
const registerContainer = document.querySelector("#crearCuentaContainer")
const headerContainer=document.querySelector('.headerContainer')

document.addEventListener('click', e => {
    if (e.target === loginBtn || e.target===registerBtn) {
        registerForm.classList.toggle('active');
        overlayRight.classList.toggle('active')
        overlayLeft.classList.toggle('active')
        loginForm.classList.toggle('active')
        formsContainer.classList.toggle('formsContainer2')
 
    }
});

