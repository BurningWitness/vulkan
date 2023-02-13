{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBufferCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBufferCreateFlags
import Vulkan.Types.Enum.VkBufferUsageFlags
import Vulkan.Types.Enum.VkSharingMode
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCreateInfo" #-} VkBufferCreateInfo =
       VkBufferCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkBufferCreateFlags -- ^ Buffer creation flags
         , size :: VkDeviceSize -- ^ Specified in bytes
         , usage :: VkBufferUsageFlags -- ^ Buffer usage flags
         , sharingMode :: VkSharingMode
         , queueFamilyIndexCount :: #{type uint32_t}
         , pQueueFamilyIndices :: Ptr #{type uint32_t}
         }

instance Storable VkBufferCreateInfo where
  sizeOf    _ = #{size      VkBufferCreateInfo}
  alignment _ = #{alignment VkBufferCreateInfo}

  peek ptr = 
    VkBufferCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sharingMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pQueueFamilyIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"size" ptr val
    pokeField @"usage" ptr val
    pokeField @"sharingMode" ptr val
    pokeField @"queueFamilyIndexCount" ptr val
    pokeField @"pQueueFamilyIndices" ptr val

instance Offset "sType" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, sType}

instance Offset "pNext" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, pNext}

instance Offset "flags" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, flags}

instance Offset "size" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, size}

instance Offset "usage" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, usage}

instance Offset "sharingMode" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, sharingMode}

instance Offset "queueFamilyIndexCount" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, queueFamilyIndexCount}

instance Offset "pQueueFamilyIndices" VkBufferCreateInfo where
  rawOffset = #{offset VkBufferCreateInfo, pQueueFamilyIndices}