
#include "linkcapture/LinkCapture.hh"
#include "linkcapture/LinkCaptureCommands.hh"

#include <unistd.h>

namespace linkcapture 
{

    LinkCapture::LinkCapture(uint32_t AXILiteAddr, uint32_t bramAddr) : axiliteAddr_(AXILiteAddr), bramAddr_(bramAddr) 
    {
        
    }

    void LinkCapture::setAddresses(uint32_t AXILiteAddr, uint32_t bramAddr)
    {
        axiliteAddr_ = AXILiteAddr;
        bramAddr_ = bramAddr;
    }

    void LinkCapture::reset()
    {
        setDelay(0);
        setAlignPattern(0xaccccccc);
        setL1OffsetOrBX(0);
        setCaptureMode(3);
        setAquireLength(1024);

        write(RESET, 0x1);
        usleep(1);
        write(RESET, 0x0);
        usleep(1);
        write(RESET, 0x1);

    }

    void LinkCapture::align()
    {
        write(ALIGN_REQUEST, 0x1);
        usleep(1);
        write(ALIGN_REQUEST, 0x0);
    }

    void LinkCapture::aquire()
    {
        write(AQUIRE, 0x1);
        usleep(1);
        write(AQUIRE, 0x0);
    }

    LinkCapture::LinkCaptureStatus LinkCapture::getStatus()
    {
        //status class
        LinkCaptureStatus status;

        //read status register 
        uint32_t statusReg = read(STATUS_REGISTER);
        //read delay setting
        status.delay = read(DELAY_OUT);
        //read alignment counters 
        status.link_aligned_cnt = read(LINK_ALIGNED_CNT);
        status.link_error_cnt = read(LINK_ERROR_CNT);

        status.align_pattern = read(ALIGN_PATTERN);
        status.align_state = read(ALIGN_STATE);
        status.delay_in = read(DELAY_IN);
        status.capture_mode = read(CAPTURE_MODE);
        status.l1aoffset_or_bx = read(L1AOFFSET_OR_BX);
        status.aquire_length = read(AQUIRE_LENGTH);

        //parse status from registers
        status.link_aligned        = statusReg & SR_LINK_ALIGNED;
        status.delay_ready         = statusReg & SR_DELAY_READY;
        status.waiting_for_trig    = statusReg & SR_WAITFORTRIG;
        status.writing_data        = statusReg & SR_WRITING;

        return status;
    }

    void LinkCapture::setDelay(uint32_t delay)
    {
        write(DELAY_IN, delay);
    }

    void LinkCapture::setAlignPattern(uint32_t align_pattern)
    {
        write(ALIGN_PATTERN, align_pattern);
    }

    void LinkCapture::setL1OffsetOrBX(uint32_t offset_or_bx)
    {
        write(L1AOFFSET_OR_BX, offset_or_bx);
    }

    void LinkCapture::setCaptureMode(uint32_t capture_mode)
    {
        write(CAPTURE_MODE, capture_mode);
    }

    void LinkCapture::setAquireLength(uint32_t aquire_length)
    {
        write(AQUIRE_LENGTH, aquire_length);
    }

    void LinkCapture::dumpData()
    {
        uint32_t length = read(AQUIRE_LENGTH);

        for(unsigned int i = 0; i < length; ++i)
        {
            printf("%6d %9x\n", i, readBRAM(i));
        }
    }

    void LinkCapture::resetBRAM()
    {
        clearBRAM();
    }
}



