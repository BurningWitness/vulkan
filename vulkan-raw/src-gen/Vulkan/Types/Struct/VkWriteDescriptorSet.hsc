{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkWriteDescriptorSet where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorBufferInfo
import Vulkan.Types.Struct.VkDescriptorImageInfo



data {-# CTYPE "vulkan/vulkan.h" "VkWriteDescriptorSet" #-} VkWriteDescriptorSet =
       VkWriteDescriptorSet
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dstSet :: VkDescriptorSet -- ^ Destination descriptor set
         , dstBinding :: #{type uint32_t} -- ^ Binding within the destination descriptor set to write
         , dstArrayElement :: #{type uint32_t} -- ^ Array element within the destination binding to write
         , descriptorCount :: #{type uint32_t} -- ^ Number of descriptors to write (determines the size of the array pointed by pDescriptors)
         , descriptorType :: VkDescriptorType -- ^ Descriptor type to write (determines which members of the array pointed by pDescriptors are going to be used)
         , pImageInfo :: Ptr VkDescriptorImageInfo -- ^ Sampler, image view, and layout for SAMPLER, COMBINED_IMAGE_SAMPLER, {SAMPLED,STORAGE}_IMAGE, and INPUT_ATTACHMENT descriptor types.
         , pBufferInfo :: Ptr VkDescriptorBufferInfo -- ^ Raw buffer, size, and offset for {UNIFORM,STORAGE}_BUFFER[_DYNAMIC] descriptor types.
         , pTexelBufferView :: Ptr VkBufferView -- ^ Buffer view to write to the descriptor for {UNIFORM,STORAGE}_TEXEL_BUFFER descriptor types.
         }

instance Storable VkWriteDescriptorSet where
  sizeOf    _ = #{size      VkWriteDescriptorSet}
  alignment _ = #{alignment VkWriteDescriptorSet}

  peek ptr = 
    VkWriteDescriptorSet
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstSet" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBinding" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstArrayElement" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pImageInfo" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pBufferInfo" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTexelBufferView" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dstSet" ptr val
    pokeField @"dstBinding" ptr val
    pokeField @"dstArrayElement" ptr val
    pokeField @"descriptorCount" ptr val
    pokeField @"descriptorType" ptr val
    pokeField @"pImageInfo" ptr val
    pokeField @"pBufferInfo" ptr val
    pokeField @"pTexelBufferView" ptr val

instance Offset "sType" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, sType}

instance Offset "pNext" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, pNext}

instance Offset "dstSet" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, dstSet}

instance Offset "dstBinding" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, dstBinding}

instance Offset "dstArrayElement" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, dstArrayElement}

instance Offset "descriptorCount" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, descriptorCount}

instance Offset "descriptorType" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, descriptorType}

instance Offset "pImageInfo" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, pImageInfo}

instance Offset "pBufferInfo" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, pBufferInfo}

instance Offset "pTexelBufferView" VkWriteDescriptorSet where
  rawOffset = #{offset VkWriteDescriptorSet, pTexelBufferView}