import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import LoginScreen from './screens/LoginScreen';
import HomeScreen from './screens/HomeScreen'
const Stack = createStackNavigator();

const StacknavigationTabs = () =>{
  return (
    <Stack.Navigator>
      <Stack.Screen name='login' component={LoginScreen}/>
      <Stack.Screen name='Home' component={HomeScreen}/>
    </Stack.Navigator>
);

}
const App = () =>  {
  return(
    <NavigationContainer>
    <StacknavigationTabs />
  </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
export default App;