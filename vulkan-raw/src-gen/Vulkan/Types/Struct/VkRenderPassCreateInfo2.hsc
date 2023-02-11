{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkRenderPassCreateInfo2 where

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



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassCreateInfo2" #-} VkRenderPassCreateInfo2 =
       VkRenderPassCreateInfo2
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

instance Storable VkRenderPassCreateInfo2 where
  sizeOf    _ = #{size      struct VkRenderPassCreateInfo2}
  alignment _ = #{alignment struct VkRenderPassCreateInfo2}

  peek ptr = 
    VkRenderPassCreateInfo2
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

instance Offset "sType" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, sType}

instance Offset "pNext" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, pNext}

instance Offset "flags" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, flags}

instance Offset "attachmentCount" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, attachmentCount}

instance Offset "pAttachments" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, pAttachments}

instance Offset "subpassCount" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, subpassCount}

instance Offset "pSubpasses" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, pSubpasses}

instance Offset "dependencyCount" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, dependencyCount}

instance Offset "pDependencies" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, pDependencies}

instance Offset "correlatedViewMaskCount" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, correlatedViewMaskCount}

instance Offset "pCorrelatedViewMasks" VkRenderPassCreateInfo2 where
  rawOffset = #{offset struct VkRenderPassCreateInfo2, pCorrelatedViewMasks}

#else

module Vulkan.Types.Struct.VkRenderPassCreateInfo2 where

#endif