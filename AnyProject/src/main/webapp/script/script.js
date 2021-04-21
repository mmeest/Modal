const openModalButtons = document.querySelectorAll('[data-modal-target]')
const closeModalButtons = document.querySelectorAll('[data-close-button]')
const overlay = document.getElementById('overlay')

openModalButtons.forEach(button => {
  button.addEventListener('click', () => {
    const modal = document.querySelector(button.dataset.modalTarget)
    document.forms[0].reset();			// to clear form before opening
    openModal(modal)
  })
})

// clicking outside modal window will close it
overlay.addEventListener('click', () => {
  const modals = document.querySelectorAll('.modal.active')
  modals.forEach(modal => {
    closeModal(modal)   
  })
})

closeModalButtons.forEach(button => {
  button.addEventListener('click', () => {
    const modal = button.closest('.modal')
    closeModal(modal)
  })
})

function openModal(modal) {
  if (modal == null) return
  modal.classList.add('active')
  overlay.classList.add('active')
}

// Close modal window
function closeModal(modal) {
  if (modal == null) return
  modal.classList.remove('active')
  overlay.classList.remove('active')
  document.forms[0].reset();                // To clear the form on close
}

// Selection filter hide
function hideFilter(row){
    let hiddenNumber = document.getElementsByClassName('hidden')
    console.log(hiddenNumber)
    document.getElementById('add').classList.remove('hiddenBtn')
    if(hiddenNumber.length > 1){
        return
    }else{
        document.getElementById(row).classList.add('hidden')
    }
}

// Selection filter show
function addOptions(){
    document.querySelectorAll(".hidden").forEach(obj=>obj.classList.remove("hidden"));
    document.getElementById('add').classList.add('hiddenBtn')
}