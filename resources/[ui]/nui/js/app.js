
window.addEventListener('message', function(event) {
    const data = event.data;

    if (data.action === 'updateUI') {
        // Update UI elements based on data
        console.log('UI updated', data);
    }
});
