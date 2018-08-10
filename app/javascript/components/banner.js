import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-demo');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "A new cocktail has been added",
        text: "Hope to taste it soon with Jeremy !",
        icon: "success"
      });
    });
  }
}

export { bindSweetAlertButtonDemo };
