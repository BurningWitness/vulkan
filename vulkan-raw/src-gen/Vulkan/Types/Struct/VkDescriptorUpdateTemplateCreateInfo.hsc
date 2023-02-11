{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfo where

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



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorUpdateTemplateCreateInfo" #-} VkDescriptorUpdateTemplateCreateInfo =
       VkDescriptorUpdateTemplateCreateInfo
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

instance Storable VkDescriptorUpdateTemplateCreateInfo where
  sizeOf    _ = #{size      struct VkDescriptorUpdateTemplateCreateInfo}
  alignment _ = #{alignment struct VkDescriptorUpdateTemplateCreateInfo}

  peek ptr = 
    VkDescriptorUpdateTemplateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"descriptorUpdateEntryCount" ptr)
       <*> peek (offset @"pDescriptorUpdateEntries" ptr)
       <*> peek (offset @"templateType" ptr)
       <*> peek (offset @"descriptorSetLayout" ptr)
       <*> peek (offset @"pipelineBindPoint" ptr)
       <*> peek (offset @"pipelineLayout" ptr)
       <*> peek (offset @"set" ptr)

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

instance Offset "sType" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, sType}

instance Offset "pNext" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, pNext}

instance Offset "flags" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, flags}

instance Offset "descriptorUpdateEntryCount" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, descriptorUpdateEntryCount}

instance Offset "pDescriptorUpdateEntries" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, pDescriptorUpdateEntries}

instance Offset "templateType" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, templateType}

instance Offset "descriptorSetLayout" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, descriptorSetLayout}

instance Offset "pipelineBindPoint" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, pipelineBindPoint}

instance Offset "pipelineLayout" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, pipelineLayout}

instance Offset "set" VkDescriptorUpdateTemplateCreateInfo where
  rawOffset = #{offset struct VkDescriptorUpdateTemplateCreateInfo, set}

#else

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfo where

#endif