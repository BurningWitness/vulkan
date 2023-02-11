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
  sizeOf    _ = #{size      struct VkBufferCreateInfo}
  alignment _ = #{alignment struct VkBufferCreateInfo}

  peek ptr = 
    VkBufferCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"usage" ptr)
       <*> peek (offset @"sharingMode" ptr)
       <*> peek (offset @"queueFamilyIndexCount" ptr)
       <*> peek (offset @"pQueueFamilyIndices" ptr)

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
  rawOffset = #{offset struct VkBufferCreateInfo, sType}

instance Offset "pNext" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, pNext}

instance Offset "flags" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, flags}

instance Offset "size" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, size}

instance Offset "usage" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, usage}

instance Offset "sharingMode" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, sharingMode}

instance Offset "queueFamilyIndexCount" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, queueFamilyIndexCount}

instance Offset "pQueueFamilyIndices" VkBufferCreateInfo where
  rawOffset = #{offset struct VkBufferCreateInfo, pQueueFamilyIndices}