package _05_netflix;

public class NetflixRunner {
public static void main(String[] args) {
Movie Up = new Movie("Up", 1);
Movie StarWars = new Movie("StarWars", 5);
Movie IronMan = new Movie("IronMan", 5);
Movie CaptainMarvel = new Movie("CaptainMarvel", 5);
Movie AvengersEndgame = new Movie("AvengersEndgame", 5);
NetflixQueue NQ = new NetflixQueue();
Up.getTicketPrice();
NQ.addMovie(AvengersEndgame);
NQ.addMovie(CaptainMarvel);
NQ.addMovie(IronMan);
NQ.addMovie(StarWars);
NQ.addMovie(Up);
NQ.printMovies();



}
}
