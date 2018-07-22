import Component from '@ember/component';
import Flowchart from 'flowchart';
import Ember from 'ember';

export default Component.extend({
  didRender: function() {
    console.log(this.get('content'));
    this._super(...arguments);
    this.send('draw');
  },
  actions: {
    draw: function() {
      this.$('#diagram').empty();
      var diagram = Flowchart.parse(this.get('content'));
      diagram.drawSVG('diagram', {
        'x': 0,
        'y': 0,
        'line-width': 3,
        'line-length': 50,
        'text-margin': 10,
        'font-size': 14,
        'font-color': 'black',
        'line-color': 'black',
        'element-color': 'black',
        'fill': 'white',
        'yes-text': 'yes',
        'no-text': 'no',
        'arrow-end': 'block',
        'scale': 1,
        // style symbol types
        'symbols': {
          'start': {
            'font-color': 'red',
            'element-color': 'green',
            'fill': 'yellow'
          },
          'end': {
            'class': 'end-element'
          }
        },
        'flowstate': {
          'past': {
            'fill': '#CCCCCC',
            'font-size': 12
          },
          'current': {
            'fill': 'yellow',
            'font-color': 'red',
            'font-weight': 'bold'
          },
          'future': {
            'fill': '#FFFF99'
          },
          'request': {
            'fill': 'blue'
          },
          'invalid': {
            'fill': '#444444'
          },
          'approved': {
            'fill': '#58C4A3',
            'font-size': 12,
            'yes-text': 'APPROVED',
            'no-text': 'n/a'
          },
          'rejected': {
            'fill': '#C45879',
            'font-size': 12,
            'yes-text': 'n/a',
            'no-text': 'REJECTED'
          }
        }

      });
    }
  }
});