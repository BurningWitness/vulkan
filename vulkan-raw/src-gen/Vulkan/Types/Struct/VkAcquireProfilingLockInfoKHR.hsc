{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkAcquireProfilingLockInfoKHR}
  alignment _ = #{alignment VkAcquireProfilingLockInfoKHR}

  peek ptr = 
    VkAcquireProfilingLockInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"timeout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"timeout" ptr val

instance Offset "sType" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset VkAcquireProfilingLockInfoKHR, sType}

instance Offset "pNext" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset VkAcquireProfilingLockInfoKHR, pNext}

instance Offset "flags" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset VkAcquireProfilingLockInfoKHR, flags}

instance Offset "timeout" VkAcquireProfilingLockInfoKHR where
  rawOffset = #{offset VkAcquireProfilingLockInfoKHR, timeout}

#else

module Vulkan.Types.Struct.VkAcquireProfilingLockInfoKHR where

#endif