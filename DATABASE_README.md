# MongoDB Database Setup for AI-Based Dropout Prediction System

## Overview
This project now includes a complete MongoDB database integration for storing and managing student data, predictions, interventions, and related information.

## Database Configuration

### Connection String
```
mongodb+srv://dbrupesh0:dbrupesh0@cluster0.h3vpzhd.mongodb.net/?retryWrites=true&w=majority&appName=cluster0
```

### Database Name
`student_dropout_prediction`

## Collections

The database includes the following collections:

1. **students** - Student profiles and academic information
2. **predictions** - AI-generated dropout risk predictions
3. **interventions** - Planned and executed interventions
4. **academic_records** - Academic performance records
5. **counseling_sessions** - Counseling session logs
6. **alerts** - System alerts and notifications

## API Endpoints

### Health Check
- `GET /api/health` - Check database connection status

### Students
- `GET /api/students` - Get all students
- `POST /api/students` - Create new student

### Predictions
- `GET /api/predictions` - Get all predictions
- `POST /api/predictions` - Create new prediction

### Interventions
- `GET /api/interventions` - Get all interventions
- `POST /api/interventions` - Create new intervention

### Academic Records
- `GET /api/academic-records` - Get all academic records
- `POST /api/academic-records` - Create new academic record

### Counseling Sessions
- `GET /api/counseling-sessions` - Get all counseling sessions
- `POST /api/counseling-sessions` - Create new counseling session

### Alerts
- `GET /api/alerts` - Get all alerts
- `POST /api/alerts` - Create new alert

### Risk Assessment
- `POST /api/risk-assessment` - Perform risk assessment for a student

## Setup Instructions

### 1. Install Dependencies
```bash
npm install
```

### 2. Start the Server
```bash
npm run server
```

### 3. Seed Sample Data (Optional)
```bash
node server/seedData.js
```

### 4. Test Database Connection
Visit `http://localhost:8787/api/health` to verify the database connection.

## Data Models

### Student Model
- Basic information (name, email, phone, etc.)
- Academic information (GPA, credits, program)
- Risk factors (attendance, assignment submission)
- Family and personal information

### Prediction Model
- Dropout probability and risk level
- Contributing factors and their weights
- Model information and confidence
- Recommendations for intervention

### Intervention Model
- Intervention type and description
- Status and priority
- Timeline and milestones
- Progress tracking and outcomes

## Usage Examples

### Create a Student
```javascript
const studentData = {
  studentId: 'STU004',
  firstName: 'Alice',
  lastName: 'Wilson',
  email: 'alice.wilson@university.edu',
  // ... other fields
};

fetch('/api/students', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(studentData)
});
```

### Perform Risk Assessment
```javascript
const riskData = {
  studentId: 'STU004',
  riskFactors: ['low_attendance', 'financial_stress', 'low_gpa']
};

fetch('/api/risk-assessment', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(riskData)
});
```

## Security Notes

- The database connection string is hardcoded for development
- In production, use environment variables for sensitive data
- Implement proper authentication and authorization
- Use MongoDB Atlas security features

## Troubleshooting

### Connection Issues
1. Check if the MongoDB Atlas cluster is running
2. Verify the connection string is correct
3. Ensure network access is configured in MongoDB Atlas
4. Check firewall settings

### Data Issues
1. Verify collection names match the COLLECTIONS constant
2. Check data validation in model files
3. Review error logs in the server console

## Next Steps

1. Implement user authentication
2. Add data validation middleware
3. Create admin dashboard for data management
4. Implement real-time notifications
5. Add data export/import functionality
