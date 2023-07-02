# Todo app

## Assumptions

There were no requirements for validating data so I assumed that any data entered
would be with the valid types. The only thing I did make sure of is that you can't
change Todo `id`s in any way. This makes sure to keep the requirement that they
must all have unique `id`s. The only `id`s that can be altered are those not in
the collection.

When instantiating a new `Todo` object I included a default `completed` parameter
and set it to `false` just in case a user wanted to put it in as `true` when adding
a new todo.

I made sure that the collection holding all the todos was private since we only
wanted to be able to operate on it using methods the developer intends. Only copies
of the collection are ever returned.

I wasn't sure whether the methods defined on the `todoList` should have accepted an
`id` or an object. The only explicit requirement was that there had to be a method
which returned a `todo` object that took an `id` as an input. I figured it would be
ok to do the same for other methods. When updating or adding I decided to take an
object. When deleting I chose to take an `id`.
