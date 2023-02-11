{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorPoolSize where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkDescriptorType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorPoolSize" #-} VkDescriptorPoolSize =
       VkDescriptorPoolSize
         { type_ :: VkDescriptorType
         , descriptorCount :: #{type uint32_t}
         }

instance Storable VkDescriptorPoolSize where
  sizeOf    _ = #{size      struct VkDescriptorPoolSize}
  alignment _ = #{alignment struct VkDescriptorPoolSize}

  peek ptr = 
    VkDescriptorPoolSize
       <$> peek (offset @"type" ptr)
       <*> peek (offset @"descriptorCount" ptr)

  poke ptr val = do
    pokeField @"type" ptr val
    pokeField @"descriptorCount" ptr val

instance Offset "type_" VkDescriptorPoolSize where
  rawOffset = #{offset struct VkDescriptorPoolSize, type}

instance Offset "descriptorCount" VkDescriptorPoolSize where
  rawOffset = #{offset struct VkDescriptorPoolSize, descriptorCount}

instance Offset "type" VkDescriptorPoolSize where
  rawOffset = rawOffset @"type_" @VkDescriptorPoolSize

instance HasField "type" VkDescriptorPoolSize VkDescriptorType where
  getField = getField @"type_" @VkDescriptorPoolSize