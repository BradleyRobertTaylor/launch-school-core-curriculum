function myBind(func, context, ...args) {
  return function(...moreArgs) {
    const allArgs = args.concat(moreArgs);

    return func.apply(context, allArgs);
  };
}
