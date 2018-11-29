include("../src/TDD_Template.jl")

@static if VERSION < v"0.7.0-DEV.2005"
	using Base.Test
else
	using Test
end

#Base.runtest(tests=["all"]; exit_on_error=false, [seed])

@testset "main" begin
	@test TDD_Template.greet() == nothing
	@test TDD_Template.return5() == 5
	@test TDD_Template.return_a() == 2*TDD_Template.return5()
end
