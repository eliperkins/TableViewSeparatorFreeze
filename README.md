TableViewSeparatorFreeze
=====

This project reproduces an issue with setting a custom inset inside of
`layoutSubviews` on the table view cell subclass.

Given a `UITableViewCell` subclass sets a custom `separatorInset` value in it's
`layoutSubviews` method, in this example called `CustomInsetCell`, and a
`UITableView` displaying the cell has `cellLayoutMarginsFollowReadableWidth` set
to `true`, upon rotating the table view, an infinite set of calls to
`CustomInsetCell.layoutSubviews()` occurs, due to the method setting the
`separatorInset`.

## Expected Behavior

The table view handles rotation, maintaining the custom `separatorInset` value.

## Actual Behavior

The application freezes upon rotation due to infinite calls to
`CustomInsetCell.layoutSubviews()`
