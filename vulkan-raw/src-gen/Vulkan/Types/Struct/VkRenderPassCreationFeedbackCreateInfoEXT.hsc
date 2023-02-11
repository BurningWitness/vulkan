{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Types.Struct.VkRenderPassCreationFeedbackCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRenderPassCreationFeedbackInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassCreationFeedbackCreateInfoEXT" #-} VkRenderPassCreationFeedbackCreateInfoEXT =
       VkRenderPassCreationFeedbackCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pRenderPassFeedback :: Ptr VkRenderPassCreationFeedbackInfoEXT
         }

instance Storable VkRenderPassCreationFeedbackCreateInfoEXT where
  sizeOf    _ = #{size      struct VkRenderPassCreationFeedbackCreateInfoEXT}
  alignment _ = #{alignment struct VkRenderPassCreationFeedbackCreateInfoEXT}

  peek ptr = 
    VkRenderPassCreationFeedbackCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pRenderPassFeedback" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pRenderPassFeedback" ptr val

instance Offset "sType" VkRenderPassCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset struct VkRenderPassCreationFeedbackCreateInfoEXT, sType}

instance Offset "pNext" VkRenderPassCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset struct VkRenderPassCreationFeedbackCreateInfoEXT, pNext}

instance Offset "pRenderPassFeedback" VkRenderPassCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset struct VkRenderPassCreationFeedbackCreateInfoEXT, pRenderPassFeedback}

#else

module Vulkan.Types.Struct.VkRenderPassCreationFeedbackCreateInfoEXT where

#endif