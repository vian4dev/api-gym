/*
  Warnings:

  - Added the required column `user_id` to the `check_ins` table without a default value. This is not possible if the table is not empty.
  - Made the column `validated_at` on table `check_ins` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "check_ins" ADD COLUMN     "gymId" TEXT,
ADD COLUMN     "user_id" TEXT NOT NULL,
ALTER COLUMN "validated_at" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "check_ins" ADD CONSTRAINT "check_ins_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "check_ins" ADD CONSTRAINT "check_ins_gymId_fkey" FOREIGN KEY ("gymId") REFERENCES "gyms"("id") ON DELETE SET NULL ON UPDATE CASCADE;
