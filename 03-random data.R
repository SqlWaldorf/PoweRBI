nr_of_observations <- 50

nr_of_observations


1:nr_of_observations

userid <- 1:nr_of_observations
runif(nr_of_observations, min = 20, max = 70)
as.integer(runif(nr_of_observations, min = 20, max = 70))

userage <- as.integer(
    runif(nr_of_observations, min = 20, max = 70)
);

hist(runif(5000, 20, 70))
rnorm(nr_of_observations, mean = 2500, sd = 500)
hist(rnorm(5000, mean = 2500, sd = 500))

userincome <- as.integer(
     rnorm(nr_of_observations, mean = 2500, sd = 500)
);

data.frame(age = userage, income = userincome)

plot(data.frame(age = userage, income = userincome))

plot(data.frame(age = userage, income = userincome + 50 * userage))

# solution
nr_of_observations <- 50
min_age <- 20
max_age <- 65
age_multiplication_factor <- 50
mean_income <- 2500
income_stadard_deviation <- 500


user_age <- as.integer(
    runif(nr_of_observations, min = min_age, max = max_age)
)

user_income <- as.integer(
     rnorm(nr_of_observations, mean = mean_income , sd = income_stadard_deviation )
) + age_multiplication_factor * user_age

my_dummy_dataset <- data.frame(age = user_age, income = user_income)




















# add id col:
my_dummy_dataset <- data.frame(id = 1:nr_of_observations, age = user_age, income = user_income)

