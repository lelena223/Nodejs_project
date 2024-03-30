const catchAsyncError = (asyncFunction) => {
    asyncFunction(req, res, next).catch(next);
}

module.exports = catchAsyncError;
