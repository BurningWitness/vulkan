{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkRenderPassCreateInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkRenderPassCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentDescription2
import Vulkan.Types.Struct.VkSubpassDependency2
import Vulkan.Types.Struct.VkSubpassDescription2



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassCreateInfo2KHR" #-} VkRenderPassCreateInfo2KHR =
       VkRenderPassCreateInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkRenderPassCreateFlags
         , attachmentCount :: #{type uint32_t}
         , pAttachments :: Ptr VkAttachmentDescription2
         , subpassCount :: #{type uint32_t}
         , pSubpasses :: Ptr VkSubpassDescription2
         , dependencyCount :: #{type uint32_t}
         , pDependencies :: Ptr VkSubpassDependency2
         , correlatedViewMaskCount :: #{type uint32_t}
         , pCorrelatedViewMasks :: Ptr #{type uint32_t}
         }

instance Storable VkRenderPassCreateInfo2KHR where
  sizeOf    _ = #{size      VkRenderPassCreateInfo2KHR}
  alignment _ = #{alignment VkRenderPassCreateInfo2KHR}

  peek ptr = 
    VkRenderPassCreateInfo2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"attachmentCount" ptr)
       <*> peek (offset @"pAttachments" ptr)
       <*> peek (offset @"subpassCount" ptr)
       <*> peek (offset @"pSubpasses" ptr)
       <*> peek (offset @"dependencyCount" ptr)
       <*> peek (offset @"pDependencies" ptr)
       <*> peek (offset @"correlatedViewMaskCount" ptr)
       <*> peek (offset @"pCorrelatedViewMasks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pAttachments" ptr val
    pokeField @"subpassCount" ptr val
    pokeField @"pSubpasses" ptr val
    pokeField @"dependencyCount" ptr val
    pokeField @"pDependencies" ptr val
    pokeField @"correlatedViewMaskCount" ptr val
    pokeField @"pCorrelatedViewMasks" ptr val

instance Offset "sType" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, sType}

instance Offset "pNext" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, pNext}

instance Offset "flags" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, flags}

instance Offset "attachmentCount" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, attachmentCount}

instance Offset "pAttachments" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, pAttachments}

instance Offset "subpassCount" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, subpassCount}

instance Offset "pSubpasses" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, pSubpasses}

instance Offset "dependencyCount" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, dependencyCount}

instance Offset "pDependencies" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, pDependencies}

instance Offset "correlatedViewMaskCount" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, correlatedViewMaskCount}

instance Offset "pCorrelatedViewMasks" VkRenderPassCreateInfo2KHR where
  rawOffset = #{offset VkRenderPassCreateInfo2KHR, pCorrelatedViewMasks}

#else

module Vulkan.Types.Struct.VkRenderPassCreateInfo2KHR where

#endif