import { moduleForModel, test } from 'ember-qunit';

moduleForModel('form-element', 'Unit | Model | form element', {
  // Specify the other units that are required for this test.
  needs: ['model:form']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});