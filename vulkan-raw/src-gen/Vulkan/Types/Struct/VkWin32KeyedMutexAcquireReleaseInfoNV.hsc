{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_win32_keyed_mutex

module Vulkan.Types.Struct.VkWin32KeyedMutexAcquireReleaseInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkWin32KeyedMutexAcquireReleaseInfoNV" #-} VkWin32KeyedMutexAcquireReleaseInfoNV =
       VkWin32KeyedMutexAcquireReleaseInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , acquireCount :: #{type uint32_t}
         , pAcquireSyncs :: Ptr VkDeviceMemory
         , pAcquireKeys :: Ptr #{type uint64_t}
         , pAcquireTimeoutMilliseconds :: Ptr #{type uint32_t}
         , releaseCount :: #{type uint32_t}
         , pReleaseSyncs :: Ptr VkDeviceMemory
         , pReleaseKeys :: Ptr #{type uint64_t}
         }

instance Storable VkWin32KeyedMutexAcquireReleaseInfoNV where
  sizeOf    _ = #{size      VkWin32KeyedMutexAcquireReleaseInfoNV}
  alignment _ = #{alignment VkWin32KeyedMutexAcquireReleaseInfoNV}

  peek ptr = 
    VkWin32KeyedMutexAcquireReleaseInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"acquireCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAcquireSyncs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAcquireKeys" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAcquireTimeoutMilliseconds" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"releaseCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReleaseSyncs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReleaseKeys" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"acquireCount" ptr val
    pokeField @"pAcquireSyncs" ptr val
    pokeField @"pAcquireKeys" ptr val
    pokeField @"pAcquireTimeoutMilliseconds" ptr val
    pokeField @"releaseCount" ptr val
    pokeField @"pReleaseSyncs" ptr val
    pokeField @"pReleaseKeys" ptr val

instance Offset "sType" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, sType}

instance Offset "pNext" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, pNext}

instance Offset "acquireCount" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, acquireCount}

instance Offset "pAcquireSyncs" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, pAcquireSyncs}

instance Offset "pAcquireKeys" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, pAcquireKeys}

instance Offset "pAcquireTimeoutMilliseconds" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, pAcquireTimeoutMilliseconds}

instance Offset "releaseCount" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, releaseCount}

instance Offset "pReleaseSyncs" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, pReleaseSyncs}

instance Offset "pReleaseKeys" VkWin32KeyedMutexAcquireReleaseInfoNV where
  rawOffset = #{offset VkWin32KeyedMutexAcquireReleaseInfoNV, pReleaseKeys}

#else

module Vulkan.Types.Struct.VkWin32KeyedMutexAcquireReleaseInfoNV where

#endif