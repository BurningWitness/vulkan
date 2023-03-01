{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkWin32KeyedMutexAcquireReleaseInfoKHR}
  alignment _ = #{alignment VkWin32KeyedMutexAcquireReleaseInfoKHR}

  peek ptr = 
    VkWin32KeyedMutexAcquireReleaseInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"acquireCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAcquireSyncs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAcquireKeys" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAcquireTimeouts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"releaseCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReleaseSyncs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReleaseKeys" ptr)

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
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, sType}

instance Offset "pNext" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, pNext}

instance Offset "acquireCount" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, acquireCount}

instance Offset "pAcquireSyncs" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, pAcquireSyncs}

instance Offset "pAcquireKeys" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, pAcquireKeys}

instance Offset "pAcquireTimeouts" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, pAcquireTimeouts}

instance Offset "releaseCount" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, releaseCount}

instance Offset "pReleaseSyncs" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, pReleaseSyncs}

instance Offset "pReleaseKeys" VkWin32KeyedMutexAcquireReleaseInfoKHR where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoKHR, pReleaseKeys}

#else

module Vulkan.Types.Struct.VkWin32KeyedMutexAcquireReleaseInfoKHR where

#endif