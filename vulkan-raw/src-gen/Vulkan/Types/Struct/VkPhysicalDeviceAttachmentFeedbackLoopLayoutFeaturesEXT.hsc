{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_attachment_feedback_loop_layout

module Vulkan.Types.Struct.VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT" #-} VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT =
       VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentFeedbackLoopLayout :: VkBool32
         }

instance Storable VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"attachmentFeedbackLoopLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentFeedbackLoopLayout" ptr val

instance Offset "sType" VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT, pNext}

instance Offset "attachmentFeedbackLoopLayout" VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT, attachmentFeedbackLoopLayout}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT where

#endif