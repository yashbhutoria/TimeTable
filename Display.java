
class Display{
    public String subject;
    public String faculty;
    public String venue;

    Display(String subject,String venue,String faculty){
        this.subject = subject;
        this.faculty = faculty;
        this.venue = venue;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("\nSubject:\t" + subject);
        sb.append("\nVenue:\t\t" + venue);
        sb.append("\nFaculty:\t" + faculty);
        return sb.toString();
    }

}