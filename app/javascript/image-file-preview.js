document.addEventListener("DOMContentLoaded", () => {
    console.log("XXXXXXXX");
    const previewImage = (inputId, previewId) => {
        const input = document.getElementById(inputId);
        const preview = document.getElementById(previewId);

        if (input && preview) {
            input.addEventListener("change", (e) => {
                const file = e.target.files[0];
                if (file) {
                    preview.src = URL.createObjectURL(file);
                    preview.style.display = "block";
                }
            });
        }
    };

    previewImage("before_image_input", "before_image_preview");
    previewImage("after_image_input", "after_image_preview");
});
