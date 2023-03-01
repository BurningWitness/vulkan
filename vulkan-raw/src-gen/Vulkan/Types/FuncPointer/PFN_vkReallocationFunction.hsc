#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkReallocationFunction where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Enum.VkSystemAllocationScope



type PFN_vkReallocationFunction =
          Ptr () -- ^ pUserData
       -> Ptr () -- ^ pOriginal
       -> #{type size_t} -- ^ size
       -> #{type size_t} -- ^ alignment
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO (Ptr ())