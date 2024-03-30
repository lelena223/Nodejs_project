const errorHandler = (err, req, res, next) => {
    const statusError = err.status || 500;
    const messageError = err.message || "Internal server error";
    res.status(statusError).json({message: messageError});

}

module.exports = errorHandler;
