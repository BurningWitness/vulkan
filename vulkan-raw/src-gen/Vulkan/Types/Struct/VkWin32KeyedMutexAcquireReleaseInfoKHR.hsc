{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_win32_keyed_mutex

module Vulkan.Types.Struct.VkWin32KeyedMutexAcquireReleaseInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkWin32KeyedMutexAcquireReleaseInfoKHR" #-} VkWin32KeyedMutexAcquireReleaseInfoKHR =
       VkWin32KeyedMutexAcquireReleaseInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , acquireCount :: #{type uint32_t}
         , pAcquireSyncs :: Ptr VkDeviceMemory
         , pAcquireKeys :: Ptr #{type uint64_t}
         , pAcquireTimeouts :: Ptr #{type uint32_t}
         , releaseCount :: #{type uint32_t}
         , pReleaseSyncs :: Ptr VkDeviceMemory
         , pReleaseKeys :: Ptr #{type uint64_t}
         }

instance Storable VkWin32KeyedMutexAcquireReleaseInfoKHR where
  sizeOf    _ = #{size      struct VkWin32KeyedMutexAcquireReleaseInfoKHR}
  alignment _ = #{alignment struct VkWin32KeyedMutexAcquireReleaseInfoKHR}

  peek ptr = 
    VkWin32KeyedMutexAcquireReleaseInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"acquireCount" ptr)
       <*> peek (offset @"pAcquireSyncs" ptr)
       <*> peek (offset @"pAcquireKeys" ptr)
       <*> peek (offset @"pAcquireTimeouts" ptr)
       <*> peek (offset @"releaseCount" ptr)
       <*> peek (offset @"pReleaseSyncs" ptr)
       <*> peek (offset @"pReleaseKeys" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"acquireCount" ptr val
    pokeField @"pAcquireSyncs" ptr val
    pokeField @"pAcquireKeys" ptr val
    pokeField @"pAcquireTimeouts" ptr val
    pokeField @"releaseCount" ptr val
    pokeField @"pReleaseSyncs" ptr val
    pokeField @"pReleaseKeys" ptr val

instance Offset "sType" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, sType}

instance Offset "pNext" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, pNext}

instance Offset "acquireCount" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, acquireCount}

instance Offset "pAcquireSyncs" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, pAcquireSyncs}

instance Offset "pAcquireKeys" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, pAcquireKeys}

instance Offset "pAcquireTimeouts" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, pAcquireTimeouts}

instance Offset "releaseCount" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, releaseCount}

instance Offset "pReleaseSyncs" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, pReleaseSyncs}

instance Offset "pReleaseKeys" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset struct VkWin32KeyedMutexAcquireReleaseInfoKHR, pReleaseKeys}

#else

module Vulkan.Types.Struct.VkWin32KeyedMutexAcquireReleaseInfoKHR where

#endif