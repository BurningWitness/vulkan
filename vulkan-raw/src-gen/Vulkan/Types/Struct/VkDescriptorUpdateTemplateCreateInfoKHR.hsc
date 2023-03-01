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

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateCreateFlags
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateType
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorUpdateTemplateEntry



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorUpdateTemplateCreateInfoKHR" #-} VkDescriptorUpdateTemplateCreateInfoKHR =
       VkDescriptorUpdateTemplateCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDescriptorUpdateTemplateCreateFlags
         , descriptorUpdateEntryCount :: #{type uint32_t} -- ^ Number of descriptor update entries to use for the update template
         , pDescriptorUpdateEntries :: Ptr VkDescriptorUpdateTemplateEntry -- ^ Descriptor update entries for the template
         , templateType :: VkDescriptorUpdateTemplateType
         , descriptorSetLayout :: VkDescriptorSetLayout
         , pipelineBindPoint :: VkPipelineBindPoint
         , pipelineLayout :: VkPipelineLayout -- ^ If used for push descriptors, this is the only allowed layout
         , set :: #{type uint32_t}
         }

instance Storable VkDescriptorUpdateTemplateCreateInfoKHR where
  sizeOf    _ = #{size      VkDescriptorUpdateTemplateCreateInfoKHR}
  alignment _ = #{alignment VkDescriptorUpdateTemplateCreateInfoKHR}

  peek ptr = 
    VkDescriptorUpdateTemplateCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorUpdateEntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDescriptorUpdateEntries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"templateType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorSetLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineBindPoint" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"set" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"descriptorUpdateEntryCount" ptr val
    pokeField @"pDescriptorUpdateEntries" ptr val
    pokeField @"templateType" ptr val
    pokeField @"descriptorSetLayout" ptr val
    pokeField @"pipelineBindPoint" ptr val
    pokeField @"pipelineLayout" ptr val
    pokeField @"set" ptr val

instance Offset "sType" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, sType}

instance Offset "pNext" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, pNext}

instance Offset "flags" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, flags}

instance Offset "descriptorUpdateEntryCount" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, descriptorUpdateEntryCount}

instance Offset "pDescriptorUpdateEntries" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, pDescriptorUpdateEntries}

instance Offset "templateType" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, templateType}

instance Offset "descriptorSetLayout" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, descriptorSetLayout}

instance Offset "pipelineBindPoint" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, pipelineBindPoint}

instance Offset "pipelineLayout" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, pipelineLayout}

instance Offset "set" VkDescriptorUpdateTemplateCreateInfoKHR where
  rawOffset = #{offset VkDescriptorUpdateTemplateCreateInfoKHR, set}

#else

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfoKHR where

#endif