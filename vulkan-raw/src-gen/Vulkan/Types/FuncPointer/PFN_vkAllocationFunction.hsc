#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkAllocationFunction where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Enum.VkSystemAllocationScope



type PFN_vkAllocationFunction =
          Ptr () -- ^ pUserData
       -> #{type size_t} -- ^ size
       -> #{type size_t} -- ^ alignment
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO (Ptr ())