module Post::Cell
  class Show < Trailblazer::Cell
    include ActionView::RecordIdentifier
    include ActionView::Helpers::FormOptionsHelper
    include SimpleForm::ActionViewExtensions::FormHelper
  end
end
