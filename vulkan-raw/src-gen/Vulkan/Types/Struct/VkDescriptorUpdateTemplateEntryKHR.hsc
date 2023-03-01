{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_descriptor_update_template

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateEntryKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorUpdateTemplateEntryKHR" #-} VkDescriptorUpdateTemplateEntryKHR =
       VkDescriptorUpdateTemplateEntryKHR
         { dstBinding :: #{type uint32_t} -- ^ Binding within the destination descriptor set to write
         , dstArrayElement :: #{type uint32_t} -- ^ Array element within the destination binding to write
         , descriptorCount :: #{type uint32_t} -- ^ Number of descriptors to write
         , descriptorType :: VkDescriptorType -- ^ Descriptor type to write
         , offset :: #{type size_t} -- ^ Offset into pData where the descriptors to update are stored
         , stride :: #{type size_t} -- ^ Stride between two descriptors in pData when writing more than one descriptor
         }

instance Storable VkDescriptorUpdateTemplateEntryKHR where
  sizeOf    _ = #{size      VkDescriptorUpdateTemplateEntryKHR}
  alignment _ = #{alignment VkDescriptorUpdateTemplateEntryKHR}

  peek ptr = 
    VkDescriptorUpdateTemplateEntryKHR
       <$> peek (Foreign.Storable.Offset.offset @"dstBinding" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstArrayElement" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stride" ptr)

  poke ptr val = do
    pokeField @"dstBinding" ptr val
    pokeField @"dstArrayElement" ptr val
    pokeField @"descriptorCount" ptr val
    pokeField @"descriptorType" ptr val
    pokeField @"offset" ptr val
    pokeField @"stride" ptr val

instance Offset "dstBinding" VkDescriptorUpdateTemplateEntryKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntryKHR, dstBinding}

instance Offset "dstArrayElement" VkDescriptorUpdateTemplateEntryKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntryKHR, dstArrayElement}

instance Offset "descriptorCount" VkDescriptorUpdateTemplateEntryKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntryKHR, descriptorCount}

instance Offset "descriptorType" VkDescriptorUpdateTemplateEntryKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntryKHR, descriptorType}

instance Offset "offset" VkDescriptorUpdateTemplateEntryKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntryKHR, offset}

instance Offset "stride" VkDescriptorUpdateTemplateEntryKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntryKHR, stride}

#else

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateEntryKHR where

#endif