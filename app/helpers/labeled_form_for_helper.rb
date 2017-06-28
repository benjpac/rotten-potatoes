module LabeledFormForHelper
  def labeled_form_for(record, options = {}, &block)
    options.merge! builder: LabellingFormBuilder
    form_for record, options, &block
  end
end
