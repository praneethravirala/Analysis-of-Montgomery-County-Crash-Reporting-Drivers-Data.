setwd("C:\\Users\\91957\\Documents\\AIT580")
df<-read.csv("Cleaned_Data.csv")
head(df)

library(caret)
library(randomForest)
library(ggplot2)
library(dplyr)
library(association)
association(df1)
library(vcd)

contingency_table <- table(df$Weather, df$Injury_Severity)
df_heatmap <- as.data.frame(as.table(contingency_table))

df_heatmap
ggplot(df_heatmap, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile(color = "black") +
  scale_fill_gradient(low = "yellow", high = "green") +
  labs(title = "Relationship Between Weather and Injury Severity",
       x = "Weather",
       y = "Injury Severity")

ggplot(df, aes(x = df$Light, fill = df$Injury_Severity)) +
  geom_bar(position = "stack") +
  labs(title = "Relationship Between Light and Injury Severity",
       x = "Light",
       y = "Injury Severity") +
  theme_minimal()

ggplot(df, aes(x = df$Speed_Limit, y = df$Injury_Severity)) +
  geom_boxplot() +
  labs(title = "Speed Limit vs Injury Severity",
       x = "Speed Limit",
       y = "Injury Severity") +
  theme_minimal()

#univariate
ggplot(df, aes(x = df$Driver_Substance_Abuse)) +
  geom_bar(stat = "count") +
  labs(title = "Driver Substance Abuse vs No of Accidents ",
       x = "Driver Substance Abuse",
       y = "No of Accidents") +
  theme_minimal()+theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(df, aes(x = df$Driver_At_Fault)) +
  geom_bar(stat = "count") +
  labs(title = "Driver at Fault vs No of Accidents ",
       x = "Driver at Fault",
       y = "No of Accidents") +
  theme_minimal()

ggplot(df, aes(x = df$Speed_Limit)) +
  geom_histogram(stat = "count",fill='blue',color='black')+
  labs(title = "Speed Limit vs No of Accidents ",
       x = "SpeedLimit",
       y = "No of Accidents") +
  theme_minimal()

result <- df %>%
  group_by(Equipment_Problems) %>%
  summarise(count = n())

result

ggplot(result, aes(x = "", y = count, fill = Equipment_Problems)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  theme_minimal() +
  labs(title = "Equipment_Problems Vs No of Accidents")


datetime1 <- ymd_hms(df$Crash_Date_Time)
df<-df %>% mutate(Crash_Time=datetime1)
df <- df %>%
  mutate(hour = hour(Crash_Time),
         minute = minute(Crash_Time),
         time1 = sprintf("%02d:%02d", hour, minute))

result1 <- df %>%
  group_by(Injury_Severity) %>%
  summarise(AverageSpeed=mean(Speed_Limit))

result1
ggplot(result1, aes(x = Injury_Severity,y=AverageSpeed)) +
  geom_histogram(position  = "stack",fill='red',color='black')+
  labs(title = "Injury_Severity vs Average Speed ",
       x = "SpeedLimit",
       y = "No of Accidents") +
  theme_minimal()

data1 <- data.frame(
  category = as.numeric(factor(result1$time1)),
  value = result1$count
)
data1

result1 <- result1 %>%
  mutate(data1$category)
result1


# Create a line plot based on time
ggplot(result1, aes(x = data1$category, y = count)) +
  geom_line() +
  labs(title = "No of Accidents Based on Time",
       x = "Time Categories", y = "No of Accidents")

ggplot(df, aes(x = Driver_At_Fault, fill = Injury_Severity)) +
  geom_bar(position = "stack", color = "black") +
  facet_grid(Light ~ Speed_Limit) +
  labs(
    title = "Injury Severity by Weather, Light, and Speed Limit",
    x = "Weather",
    y = "Count",
    fill = "Injury Severity"
  ) +
  theme_minimal()+theme(
    legend.position = "bottom",  # Change legend position
    legend.title = element_text(face = "bold"),  # Make legend title bold
    axis.text.x = element_text(angle = 45, hjust = 1)  # Rotate x-axis labels for better readability
  )
ggplot(df, aes(x = Weather, y = Light, fill = Speed_Limit)) +
  geom_tile(color = "black") +
  labs(
    title = "Relationship Between Weather,Light And SpeedLimit",
    x = "Weather",
    y = "Light",
    fill = "Speed Limit"
  ) +
  scale_fill_gradient(low = "yellow", high = "red") +
  theme_minimal()+theme(axis.text.x = element_text(angle = 45, hjust = 1),legend.position = "bottom")  













