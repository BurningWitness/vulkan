{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Types.Struct.VkRenderPassSubpassFeedbackCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRenderPassSubpassFeedbackInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassSubpassFeedbackCreateInfoEXT" #-} VkRenderPassSubpassFeedbackCreateInfoEXT =
       VkRenderPassSubpassFeedbackCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pSubpassFeedback :: Ptr VkRenderPassSubpassFeedbackInfoEXT
         }

instance Storable VkRenderPassSubpassFeedbackCreateInfoEXT where
  sizeOf    _ = #{size      VkRenderPassSubpassFeedbackCreateInfoEXT}
  alignment _ = #{alignment VkRenderPassSubpassFeedbackCreateInfoEXT}

  peek ptr = 
    VkRenderPassSubpassFeedbackCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSubpassFeedback" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pSubpassFeedback" ptr val

instance Offset "sType" VkRenderPassSubpassFeedbackCreateInfoEXT where
  rawOffset = #{offset VkRenderPassSubpassFeedbackCreateInfoEXT, sType}

instance Offset "pNext" VkRenderPassSubpassFeedbackCreateInfoEXT where
  rawOffset = #{offset VkRenderPassSubpassFeedbackCreateInfoEXT, pNext}

instance Offset "pSubpassFeedback" VkRenderPassSubpassFeedbackCreateInfoEXT where
  rawOffset = #{offset VkRenderPassSubpassFeedbackCreateInfoEXT, pSubpassFeedback}

#else

module Vulkan.Types.Struct.VkRenderPassSubpassFeedbackCreateInfoEXT where

#endif