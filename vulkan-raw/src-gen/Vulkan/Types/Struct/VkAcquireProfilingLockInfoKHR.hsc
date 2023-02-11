{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkAcquireProfilingLockInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAcquireProfilingLockFlagsKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAcquireProfilingLockInfoKHR" #-} VkAcquireProfilingLockInfoKHR =
       VkAcquireProfilingLockInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkAcquireProfilingLockFlagsKHR -- ^ Acquire profiling lock flags
         , timeout :: #{type uint64_t}
         }

instance Storable VkAcquireProfilingLockInfoKHR where
  sizeOf    _ = #{size      struct VkAcquireProfilingLockInfoKHR}
  alignment _ = #{alignment struct VkAcquireProfilingLockInfoKHR}

  peek ptr = 
    VkAcquireProfilingLockInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"timeout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"timeout" ptr val

instance Offset "sType" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset struct VkAcquireProfilingLockInfoKHR, sType}

instance Offset "pNext" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset struct VkAcquireProfilingLockInfoKHR, pNext}

instance Offset "flags" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset struct VkAcquireProfilingLockInfoKHR, flags}

instance Offset "timeout" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset struct VkAcquireProfilingLockInfoKHR, timeout}

#else

module Vulkan.Types.Struct.VkAcquireProfilingLockInfoKHR where

#endif