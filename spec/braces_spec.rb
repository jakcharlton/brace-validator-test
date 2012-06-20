require './brace_validator.rb'

describe BraceValidator do
  specify { BraceValidator.IsValid('(').should == false }
  specify { BraceValidator.IsValid(')').should == false }
  specify { BraceValidator.IsValid('[').should == false }
  specify { BraceValidator.IsValid(']').should == false }
  specify { BraceValidator.IsValid('{').should == false }
  specify { BraceValidator.IsValid('}').should == false }
  specify { BraceValidator.IsValid('').should == true }
  specify { BraceValidator.IsValid('[]').should == true }
  specify { BraceValidator.IsValid('()').should == true }
  specify { BraceValidator.IsValid('{}').should == true }

  # provided examples
  specify { BraceValidator.IsValid('(x + 2)').should == true }
  specify { BraceValidator.IsValid('(x + 1').should == false }
  specify { BraceValidator.IsValid('([x + 2)]').should == false }
  specify { BraceValidator.IsValid('([x + 2][x+1])').should == true }
end
