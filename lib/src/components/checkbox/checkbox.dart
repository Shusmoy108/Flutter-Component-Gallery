import 'package:flutter/material.dart';

class DynamicCheckboxClass extends StatefulWidget {
  const DynamicCheckboxClass({
    Key key,
    this.options,
    this.ontap,
    this.label,
    this.labelStyle,
    this.optionStyle,
    this.activeColor,
  }) : super(key: key);
  final List<String> options;
  final String label;
  final Function ontap;
  final TextStyle labelStyle, optionStyle;
  final Color activeColor;
  State createState() => new CheckboxState();
}

class CheckboxState extends State<DynamicCheckboxClass> {
  bool check1 = true;
  String selected;
  List<bool> checks;
  @override
  void initState() {
    checks = new List<bool>.filled(widget.options.length, false);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var i = 0; i < widget.options.length; i++) {
      widgets.add(
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: checks[i],
          title: Text(
            widget.options[i],
            style: widget.optionStyle,
          ),
          onChanged: (value) {
            setState(() {
              checks[i] = !checks[i];
              if (value) {
                if (selected == null) {
                  selected = widget.options[i];
                } else {
                  selected = selected + "," + widget.options[i];
                }
              } else {
                var str = selected.split(",");
                if (str.length == 1) {
                  selected = null;
                } else {
                  if (str.contains(widget.options[i])) {
                    str.remove(widget.options[i]);
                  }
                  selected = str[0];
                  for (int j = 1; j < str.length; j++) {
                    selected = selected + "," + str[j];
                  }
                }
              }
              widget.ontap(selected);
            });
          },
          selected: checks[i],
          activeColor: widget.activeColor,
        ),
      );
    }
    return Container(
      child: Column(
        children: <Widget>[
          Text(widget.label, style: widget.labelStyle),
          Column(
            children: widgets,
          )
        ],
      ),
    );
  }
}
