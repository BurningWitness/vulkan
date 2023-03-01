#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkInternalFreeNotification where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Enum.VkInternalAllocationType
import Vulkan.Types.Enum.VkSystemAllocationScope



type PFN_vkInternalFreeNotification =
          Ptr () -- ^ pUserData
       -> #{type size_t} -- ^ size
       -> VkInternalAllocationType -- ^ allocationType
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO ()