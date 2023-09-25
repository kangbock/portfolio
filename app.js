const express = require('express');
const app = express();
const router = express.Router();
const path = require('path');
const port = 3000;

router.use('/bootstrap', express.static(path.join(__dirname, "bootstrap/dist")));

module.exports = router;

app.use(express.static('public'));

// Start the server
app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});