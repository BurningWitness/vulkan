{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance2

module Vulkan.Types.Struct.VkPipelineTessellationDomainOriginStateCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkTessellationDomainOrigin



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineTessellationDomainOriginStateCreateInfoKHR" #-} VkPipelineTessellationDomainOriginStateCreateInfoKHR =
       VkPipelineTessellationDomainOriginStateCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , domainOrigin :: VkTessellationDomainOrigin
         }

instance Storable VkPipelineTessellationDomainOriginStateCreateInfoKHR where
  sizeOf    _ = #{size      VkPipelineTessellationDomainOriginStateCreateInfoKHR}
  alignment _ = #{alignment VkPipelineTessellationDomainOriginStateCreateInfoKHR}

  peek ptr = 
    VkPipelineTessellationDomainOriginStateCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"domainOrigin" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"domainOrigin" ptr val

instance Offset "sType" VkPipelineTessellationDomainOriginStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineTessellationDomainOriginStateCreateInfoKHR, sType}

instance Offset "pNext" VkPipelineTessellationDomainOriginStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineTessellationDomainOriginStateCreateInfoKHR, pNext}

instance Offset "domainOrigin" VkPipelineTessellationDomainOriginStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineTessellationDomainOriginStateCreateInfoKHR, domainOrigin}

#else

module Vulkan.Types.Struct.VkPipelineTessellationDomainOriginStateCreateInfoKHR where

#endif